{
  description = ''The Nim asynchronous web framework.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-akane-v0_1_7.flake = false;
  inputs.src-akane-v0_1_7.owner = "ethosa";
  inputs.src-akane-v0_1_7.ref   = "v0_1_7";
  inputs.src-akane-v0_1_7.repo  = "akane";
  inputs.src-akane-v0_1_7.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-akane-v0_1_7"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-akane-v0_1_7";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}