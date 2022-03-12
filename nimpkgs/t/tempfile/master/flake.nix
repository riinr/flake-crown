{
  description = ''Temporary files and directories'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tempfile-master.flake = false;
  inputs.src-tempfile-master.owner = "OpenSystemsLab";
  inputs.src-tempfile-master.ref   = "refs/heads/master";
  inputs.src-tempfile-master.repo  = "tempfile.nim";
  inputs.src-tempfile-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tempfile-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tempfile-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}