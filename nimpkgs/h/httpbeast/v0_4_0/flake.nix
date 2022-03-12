{
  description = ''A performant and scalable HTTP server.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-httpbeast-v0_4_0.flake = false;
  inputs.src-httpbeast-v0_4_0.owner = "dom96";
  inputs.src-httpbeast-v0_4_0.ref   = "refs/tags/v0.4.0";
  inputs.src-httpbeast-v0_4_0.repo  = "httpbeast";
  inputs.src-httpbeast-v0_4_0.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-httpbeast-v0_4_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-httpbeast-v0_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}