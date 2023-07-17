#! /bin/octave -qf
pkg load statistics
function dotheThing(arraysss, names, selectedRange,kmeansprecision)
  ## for correlation - overrides kmeans precision
  kmeansprecision=0.05
  for i=1:size(arraysss)(3)
    # Take each metric, divide by maximum within selected columns, and then
    # round to one significant digit
    q = round(arraysss(1,selectedRange,i)./max(arraysss(1,selectedRange,i)).*10)./10;
    w = round(arraysss(2,selectedRange,i)./max(arraysss(2,selectedRange,i)).*10)./10;
    e = round(arraysss(3,selectedRange,i)./max(arraysss(3,selectedRange,i)).*10)./10;
    r = [ q w e ];
    ddata(i,:)=r';
  endfor

  numOfClusters = 0;
  ## arbitrary high value
  score = 1000;
  while ( score > kmeansprecision)
    numOfClusters = numOfClusters + 1;
    [idx, c,sumd] = kmeans(ddata,numOfClusters,"Distance","correlation","Maxiter",1000000,"EmptyAction","drop"); 
    score = max(sumd)
  endwhile
  display(numOfClusters)
  newtargets=[cell(),cell()];
  clusterRepresentatives=cell(numOfClusters);
  for i = 1:size(names)(2)
    if size(clusterRepresentatives(idx(i)){:})(2) == 0
      clusterRepresentatives(idx(i))=names(i);
    endif
    newtargets(i,1)=names(i);
    newtargets(i,2)=clusterRepresentatives(idx(i));
  endfor
  for i = 1:size(names)(2)
    res = cstrcat(newtargets(i,1){:}," ",newtargets(i,2){:});
   printf("%s\n",res);
  endfor
  unique(newtargets(:,2))
endfunction


function readTheThing(filename)
  basekmeansprecision = 0.025
  file=fopen(filename)
arraysss= []
cont = 1;
i = 0;
cells=cell();
## Skip header
skip = dlmread (file,"\t",[0,0,4,0]);

## Reading features.txt
while (cont == 1)
  [c,pos,errmsg] = textscan(file,"%s",1);
  if ( size(c(1,1){:})(1) != 1)
    cont = 0
  else 
    i = i + 1;
    cells(i) = c{:};
    ## important notice, we are dropping one column that says average of max 
    ## duration ns and such, so indexing of features is different. BEWARE
    arraysss(:,:,i)= dlmread (file,"\t" ,[0,1,2,25]);
  endif
endwhile
fclose(file)
numOfArrays=i
# Excel INDEX is one-based (empirically), can verify the boundaries by using it
# sums among 21 elements
kmprecision = basekmeansprecision * 21;
# Extracting features with wabtaot and interp included
nojitRtcCompAllWabtaotRange = [1,10:14,25]
dotheThing(arraysss,cells, nojitRtcCompAllWabtaotRange,kmprecision)



##ratios = zeros(numOfArrays,numOfArrays);
##targets = [];

##for(i = 1:numOfArrays)
##for (j = i+1:numOfArrays)
##  #all-nojit-ratios 10:14
##  ratios(i,j)=sum(sum(abs((arraysss(:,beginrange,i)-arraysss(:,beginrange,j)))));
##  if ratios(i,j)<=0.1
##    targets(:,end+1)=[i,j,ratios(i,j)];
##  endif
##endfor
##endfor


##for i = 1:size(targets)(2)
##newtargets(i,1)=cells(targets(1,i));
##newtargets(i,2)=cells(targets(2,i));
##newtargets(i,3)=targets(3,i);
##endfor
##newtargets
##newtargets = sortrows(newtargets,3);
##for i = 1:size(targets)(2)
##res = cstrcat(newtargets(i,1){:}," ",newtargets(i,2){:}, " ", mat2str(newtargets(i,3){:}));
##printf("%s\n",res);
##endfor
##
endfunction
arg_list = argv();
readTheThing(arg_list{1});