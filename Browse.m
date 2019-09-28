function [ addr ] = Browse()
[FileName,FilePath]= uigetfile({'*.TIF;*.tiff','GeoTIFF files(*.tiff,*.tif)'...
    ;'*.*','All Files (*.*)'});
addr=strcat(FilePath,FileName);
end

