{
  description = ''Create files of the desired size'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fwrite-master.flake = false;
  inputs.src-fwrite-master.ref   = "refs/heads/master";
  inputs.src-fwrite-master.owner = "pdrb";
  inputs.src-fwrite-master.repo  = "nim-fwrite";
  inputs.src-fwrite-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fwrite-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-fwrite-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}