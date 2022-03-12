{
  description = ''JSON Web Tokens for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-quickjwt-master.flake = false;
  inputs.src-quickjwt-master.owner = "treeform";
  inputs.src-quickjwt-master.ref   = "refs/heads/master";
  inputs.src-quickjwt-master.repo  = "quickjwt";
  inputs.src-quickjwt-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-quickjwt-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-quickjwt-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}