(function () {
  const { OS } = Cu.import('resource://gre/modules/osfile.jsm', {});

  function getStyleSheetService() {
    const contractID = '@mozilla.org/content/style-sheet-service;1';
    return Cc[contractID].getService(Ci.nsIStyleSheetService);
  }

  function listFilesInDirectory(dirPath) {
    const dirIter = new OS.File.DirectoryIterator(dirPath);
    const files = [];
    const promise = dirIter.forEach(function (entry) {
      if(!entry.isDir) files.push(entry.path);
    });
    const filesPromise = promise.then(
      function accept() {
        dirIter.close();
        return files;
      },
      function reject(reason) {
        dirIter.close();
        throw reason;
      }
    );
    return filesPromise;
  }

  const sss = getStyleSheetService();
  const profileDir = OS.Constants.Path.profileDir;
  const cssDir = OS.Path.join(profileDir, 'chrome');
  const filesPromise = listFilesInDirectory(cssDir);

  filesPromise.then(function (files) {
    const cssFiles = files.filter((f) => /.uc.css$/.test(f));
    cssFiles.map(function (cssFile) {
      const uri = makeURI(OS.Path.toFileURI(cssFile));
      sss.loadAndRegisterSheet(uri, sss.AGENT_SHEET);
    });
  });
})();
