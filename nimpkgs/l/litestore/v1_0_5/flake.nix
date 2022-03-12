{
  description = ''A lightweight, self-contained, RESTful, searchable, multi-format NoSQL document store'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-litestore-v1_0_5.flake = false;
  inputs.src-litestore-v1_0_5.owner = "h3rald";
  inputs.src-litestore-v1_0_5.ref   = "refs/tags/v1.0.5";
  inputs.src-litestore-v1_0_5.repo  = "litestore";
  inputs.src-litestore-v1_0_5.type  = "github";
  
  inputs."nimrod".dir   = "nimpkgs/n/nimrod";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".ref   = "flake-pinning";
  inputs."nimrod".repo  = "flake-nimble";
  inputs."nimrod".type  = "github";
  inputs."nimrod".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrod".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-litestore-v1_0_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-litestore-v1_0_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}