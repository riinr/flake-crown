{
  description = ''The Nim asynchronous web framework.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-akane-v0_1_1b.flake = false;
  inputs.src-akane-v0_1_1b.owner = "ethosa";
  inputs.src-akane-v0_1_1b.ref   = "v0_1_1b";
  inputs.src-akane-v0_1_1b.repo  = "akane";
  inputs.src-akane-v0_1_1b.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-akane-v0_1_1b"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-akane-v0_1_1b";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}