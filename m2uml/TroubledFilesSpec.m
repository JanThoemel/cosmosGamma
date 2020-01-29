function    ix_trouble = TroubledFilesSpec( FolderFileSpecList )
    
    ix_trouble = [];
    for ii = 1 : size( FolderFileSpecList, 2 )
        if not( exist( fullfile( FolderFileSpecList{ :, ii } ), 'file' ) == 2 )
            ix_trouble = cat( 2, ix_trouble, ii ); 
        end
    end
end