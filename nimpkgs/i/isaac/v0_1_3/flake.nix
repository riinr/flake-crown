{
  description = ''ISAAC PRNG implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-isaac-v0_1_3.flake = false;
  inputs.src-isaac-v0_1_3.ref   = "refs/tags/v0.1.3";
  inputs.src-isaac-v0_1_3.owner = "pragmagic";
  inputs.src-isaac-v0_1_3.repo  = "isaac";
  inputs.src-isaac-v0_1_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-isaac-v0_1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-isaac-v0_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}