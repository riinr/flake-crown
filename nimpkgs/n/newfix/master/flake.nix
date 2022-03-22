{
  description = ''FIX Protocol optimized parser (Financial Information eXchange)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-newfix-master.flake = false;
  inputs.src-newfix-master.owner = "inv2004";
  inputs.src-newfix-master.ref   = "master";
  inputs.src-newfix-master.repo  = "newfix";
  inputs.src-newfix-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-newfix-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-newfix-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}