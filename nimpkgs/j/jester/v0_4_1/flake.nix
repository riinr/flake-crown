{
  description = ''A sinatra-like web framework for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jester-v0_4_1.flake = false;
  inputs.src-jester-v0_4_1.owner = "dom96";
  inputs.src-jester-v0_4_1.ref   = "refs/tags/v0.4.1";
  inputs.src-jester-v0_4_1.repo  = "jester";
  inputs.src-jester-v0_4_1.type  = "github";
  
  inputs."httpbeast".dir   = "nimpkgs/h/httpbeast";
  inputs."httpbeast".owner = "riinr";
  inputs."httpbeast".ref   = "flake-pinning";
  inputs."httpbeast".repo  = "flake-nimble";
  inputs."httpbeast".type  = "github";
  inputs."httpbeast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asynctools".dir   = "nimpkgs/a/asynctools";
  inputs."asynctools".owner = "riinr";
  inputs."asynctools".ref   = "flake-pinning";
  inputs."asynctools".repo  = "flake-nimble";
  inputs."asynctools".type  = "github";
  inputs."asynctools".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asynctools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jester-v0_4_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jester-v0_4_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}