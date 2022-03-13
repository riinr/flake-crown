{
  description = ''A Nim library for data science and machine learning'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mentat-v0_1_0.flake = false;
  inputs.src-mentat-v0_1_0.owner = "ruivieira";
  inputs.src-mentat-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-mentat-v0_1_0.repo  = "nim-mentat";
  inputs.src-mentat-v0_1_0.type  = "github";
  
  inputs."science".owner = "nim-nix-pkgs";
  inputs."science".ref   = "master";
  inputs."science".repo  = "science";
  inputs."science".type  = "github";
  inputs."science".inputs.nixpkgs.follows = "nixpkgs";
  inputs."science".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mentat-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mentat-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}