{
  description = ''A tiny framework & language for crafting massively parallel data pipelines'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pipelines-v0_1_0.flake = false;
  inputs.src-pipelines-v0_1_0.owner = "calebwin";
  inputs.src-pipelines-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-pipelines-v0_1_0.repo  = "pipelines";
  inputs.src-pipelines-v0_1_0.type  = "github";
  
  inputs."python".dir   = "nimpkgs/p/python";
  inputs."python".owner = "riinr";
  inputs."python".ref   = "flake-pinning";
  inputs."python".repo  = "flake-nimble";
  inputs."python".type  = "github";
  inputs."python".inputs.nixpkgs.follows = "nixpkgs";
  inputs."python".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pipelines-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pipelines-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}