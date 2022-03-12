{
  description = ''A performant and scalable HTTP server.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-httpbeast-v0_3_0.flake = false;
  inputs.src-httpbeast-v0_3_0.owner = "dom96";
  inputs.src-httpbeast-v0_3_0.ref   = "refs/tags/v0.3.0";
  inputs.src-httpbeast-v0_3_0.repo  = "httpbeast";
  inputs.src-httpbeast-v0_3_0.type  = "github";
  
  inputs."https://github.com/iffy/asynctools".dir   = "nimpkgs/h/https://github.com/iffy/asynctools";
  inputs."https://github.com/iffy/asynctools".owner = "riinr";
  inputs."https://github.com/iffy/asynctools".ref   = "flake-pinning";
  inputs."https://github.com/iffy/asynctools".repo  = "flake-nimble";
  inputs."https://github.com/iffy/asynctools".type  = "github";
  inputs."https://github.com/iffy/asynctools".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/iffy/asynctools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-httpbeast-v0_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-httpbeast-v0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}