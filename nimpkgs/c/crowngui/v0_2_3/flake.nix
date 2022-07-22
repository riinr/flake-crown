{
  description = ''Web Technologies based Crossplatform GUI Framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-crowngui-v0_2_3.flake = false;
  inputs.src-crowngui-v0_2_3.ref   = "refs/tags/v0.2.3";
  inputs.src-crowngui-v0_2_3.owner = "bung87";
  inputs.src-crowngui-v0_2_3.repo  = "crowngui";
  inputs.src-crowngui-v0_2_3.type  = "github";
  
  inputs."nimble".owner = "nim-nix-pkgs";
  inputs."nimble".ref   = "master";
  inputs."nimble".repo  = "nimble";
  inputs."nimble".dir   = "v0_13_1";
  inputs."nimble".type  = "github";
  inputs."nimble".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimble".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plists".owner = "nim-nix-pkgs";
  inputs."plists".ref   = "master";
  inputs."plists".repo  = "plists";
  inputs."plists".dir   = "master";
  inputs."plists".type  = "github";
  inputs."plists".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plists".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_25";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman".owner = "nim-nix-pkgs";
  inputs."imageman".ref   = "master";
  inputs."imageman".repo  = "imageman";
  inputs."imageman".dir   = "v0_8_2";
  inputs."imageman".type  = "github";
  inputs."imageman".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zopflipng".owner = "nim-nix-pkgs";
  inputs."zopflipng".ref   = "master";
  inputs."zopflipng".repo  = "zopflipng";
  inputs."zopflipng".dir   = "v0_1_4";
  inputs."zopflipng".type  = "github";
  inputs."zopflipng".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zopflipng".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rcedit".owner = "nim-nix-pkgs";
  inputs."rcedit".ref   = "master";
  inputs."rcedit".repo  = "rcedit";
  inputs."rcedit".dir   = "master";
  inputs."rcedit".type  = "github";
  inputs."rcedit".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rcedit".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github.com/bung87/static_server".owner = "nim-nix-pkgs";
  inputs."github.com/bung87/static_server".ref   = "master";
  inputs."github.com/bung87/static_server".repo  = "github.com/bung87/static_server";
  inputs."github.com/bung87/static_server".dir   = "";
  inputs."github.com/bung87/static_server".type  = "github";
  inputs."github.com/bung87/static_server".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github.com/bung87/static_server".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."icon".owner = "nim-nix-pkgs";
  inputs."icon".ref   = "master";
  inputs."icon".repo  = "icon";
  inputs."icon".dir   = "master";
  inputs."icon".type  = "github";
  inputs."icon".inputs.nixpkgs.follows = "nixpkgs";
  inputs."icon".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsonschema".owner = "nim-nix-pkgs";
  inputs."jsonschema".ref   = "master";
  inputs."jsonschema".repo  = "jsonschema";
  inputs."jsonschema".dir   = "master";
  inputs."jsonschema".type  = "github";
  inputs."jsonschema".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsonschema".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-crowngui-v0_2_3"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-crowngui-v0_2_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}