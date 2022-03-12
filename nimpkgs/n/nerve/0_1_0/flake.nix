{
  description = ''A RPC framework for building web APIs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nerve-0_1_0.flake = false;
  inputs.src-nerve-0_1_0.owner = "nepeckman";
  inputs.src-nerve-0_1_0.ref   = "refs/tags/0.1.0";
  inputs.src-nerve-0_1_0.repo  = "nerve-rpc";
  inputs.src-nerve-0_1_0.type  = "github";
  
  inputs."httpbeast".dir   = "nimpkgs/h/httpbeast";
  inputs."httpbeast".owner = "riinr";
  inputs."httpbeast".ref   = "flake-pinning";
  inputs."httpbeast".repo  = "flake-nimble";
  inputs."httpbeast".type  = "github";
  inputs."httpbeast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nerve-0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nerve-0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}