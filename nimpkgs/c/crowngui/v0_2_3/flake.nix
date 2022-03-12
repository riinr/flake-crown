{
  description = ''Web Technologies based Crossplatform GUI Framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-crowngui-v0_2_3.flake = false;
  inputs.src-crowngui-v0_2_3.owner = "bung87";
  inputs.src-crowngui-v0_2_3.ref   = "refs/tags/v0.2.3";
  inputs.src-crowngui-v0_2_3.repo  = "crowngui";
  inputs.src-crowngui-v0_2_3.type  = "github";
  
  inputs."nimble".dir   = "nimpkgs/n/nimble";
  inputs."nimble".owner = "riinr";
  inputs."nimble".ref   = "flake-pinning";
  inputs."nimble".repo  = "flake-nimble";
  inputs."nimble".type  = "github";
  inputs."nimble".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plists".dir   = "nimpkgs/p/plists";
  inputs."plists".owner = "riinr";
  inputs."plists".ref   = "flake-pinning";
  inputs."plists".repo  = "flake-nimble";
  inputs."plists".type  = "github";
  inputs."plists".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plists".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".dir   = "nimpkgs/c/cligen";
  inputs."cligen".owner = "riinr";
  inputs."cligen".ref   = "flake-pinning";
  inputs."cligen".repo  = "flake-nimble";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman".dir   = "nimpkgs/i/imageman";
  inputs."imageman".owner = "riinr";
  inputs."imageman".ref   = "flake-pinning";
  inputs."imageman".repo  = "flake-nimble";
  inputs."imageman".type  = "github";
  inputs."imageman".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zopflipng".dir   = "nimpkgs/z/zopflipng";
  inputs."zopflipng".owner = "riinr";
  inputs."zopflipng".ref   = "flake-pinning";
  inputs."zopflipng".repo  = "flake-nimble";
  inputs."zopflipng".type  = "github";
  inputs."zopflipng".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zopflipng".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rcedit".dir   = "nimpkgs/r/rcedit";
  inputs."rcedit".owner = "riinr";
  inputs."rcedit".ref   = "flake-pinning";
  inputs."rcedit".repo  = "flake-nimble";
  inputs."rcedit".type  = "github";
  inputs."rcedit".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rcedit".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/bung87/static_server".dir   = "nimpkgs/h/https://github.com/bung87/static_server";
  inputs."https://github.com/bung87/static_server".owner = "riinr";
  inputs."https://github.com/bung87/static_server".ref   = "flake-pinning";
  inputs."https://github.com/bung87/static_server".repo  = "flake-nimble";
  inputs."https://github.com/bung87/static_server".type  = "github";
  inputs."https://github.com/bung87/static_server".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/bung87/static_server".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/bung87/icon".dir   = "nimpkgs/h/https://github.com/bung87/icon";
  inputs."https://github.com/bung87/icon".owner = "riinr";
  inputs."https://github.com/bung87/icon".ref   = "flake-pinning";
  inputs."https://github.com/bung87/icon".repo  = "flake-nimble";
  inputs."https://github.com/bung87/icon".type  = "github";
  inputs."https://github.com/bung87/icon".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/bung87/icon".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsonschema".dir   = "nimpkgs/j/jsonschema";
  inputs."jsonschema".owner = "riinr";
  inputs."jsonschema".ref   = "flake-pinning";
  inputs."jsonschema".repo  = "flake-nimble";
  inputs."jsonschema".type  = "github";
  inputs."jsonschema".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsonschema".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-crowngui-v0_2_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-crowngui-v0_2_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}