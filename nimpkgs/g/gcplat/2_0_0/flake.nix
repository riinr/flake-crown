{
  description = ''Google Cloud Platform (GCP) APIs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gcplat-2_0_0.flake = false;
  inputs.src-gcplat-2_0_0.owner = "disruptek";
  inputs.src-gcplat-2_0_0.ref   = "refs/tags/2.0.0";
  inputs.src-gcplat-2_0_0.repo  = "gcplat";
  inputs.src-gcplat-2_0_0.type  = "github";
  
  inputs."openapi".dir   = "nimpkgs/o/openapi";
  inputs."openapi".owner = "riinr";
  inputs."openapi".ref   = "flake-pinning";
  inputs."openapi".repo  = "flake-nimble";
  inputs."openapi".type  = "github";
  inputs."openapi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/yglukhov/nim-jwt.git".dir   = "nimpkgs/h/https://github.com/yglukhov/nim-jwt.git";
  inputs."https://github.com/yglukhov/nim-jwt.git".owner = "riinr";
  inputs."https://github.com/yglukhov/nim-jwt.git".ref   = "flake-pinning";
  inputs."https://github.com/yglukhov/nim-jwt.git".repo  = "flake-nimble";
  inputs."https://github.com/yglukhov/nim-jwt.git".type  = "github";
  inputs."https://github.com/yglukhov/nim-jwt.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/yglukhov/nim-jwt.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/disruptek/rest.git".dir   = "nimpkgs/h/https://github.com/disruptek/rest.git";
  inputs."https://github.com/disruptek/rest.git".owner = "riinr";
  inputs."https://github.com/disruptek/rest.git".ref   = "flake-pinning";
  inputs."https://github.com/disruptek/rest.git".repo  = "flake-nimble";
  inputs."https://github.com/disruptek/rest.git".type  = "github";
  inputs."https://github.com/disruptek/rest.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/disruptek/rest.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gcplat-2_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gcplat-2_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}