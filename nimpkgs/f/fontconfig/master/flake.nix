{
  description = ''Low level wrapper for the fontconfig library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fontconfig-master.flake = false;
  inputs.src-fontconfig-master.owner = "Parashurama";
  inputs.src-fontconfig-master.ref   = "refs/heads/master";
  inputs.src-fontconfig-master.repo  = "fontconfig";
  inputs.src-fontconfig-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fontconfig-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-fontconfig-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}