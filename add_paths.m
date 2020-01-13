% this file is to add all directories to MATLAB, which would last only for
% current session, i.e. if you close and re-open MATLAB, the path you have
% added would not be there for you.
function add_paths
windowsOS()
end

function windowsOS()
current_path = pwd();
paths = ...
    ["\data"; 
    "\tools"];
n = length(paths);
for i = 1:n
   addpath((current_path+paths(i))); 
end
end