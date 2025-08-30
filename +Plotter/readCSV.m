function data = readCSV(path)
    opts = detectImportOptions(path);
    opts.VariableNamingRule = 'preserve';
    data = readtable(path, opts);
end