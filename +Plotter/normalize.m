function [tCommon, yInterp] = normalize(datasets)
    numDatasets = numel(datasets);
    allTimes = [];
    for k = 1:numDatasets
        allTimes = [allTimes, datasets(k).time(:)'];
    end
    tCommon = unique(sort(allTimes));
    yInterp = NaN(numDatasets, numel(tCommon));
    for k = 1:numDatasets
        yInterp(k,:) = interp1(datasets(k).time(:)', datasets(k).value(:)', tCommon, 'linear', 'extrap');
    end
end