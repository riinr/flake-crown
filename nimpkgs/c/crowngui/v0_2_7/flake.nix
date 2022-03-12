{
  description = ''Web Technologies based Crossplatform GUI Framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-crowngui-v0_2_7.flake = false;
  inputs.src-crowngui-v0_2_7.owner = "bung87";
  inputs.src-crowngui-v0_2_7.ref   = "refs/tags/v0.2.7";
  inputs.src-crowngui-v0_2_7.repo  = "crowngui";
  inputs.src-crowngui-v0_2_7.type  = "github";
  
  inputs."regex".dir   = "nimpkgs/r/regex";
  inputs."regex".owner = "riinr";
  inputs."regex".ref   = "flake-pinning";
  inputs."regex".repo  = "flake-nimble";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx".dir   = "nimpkgs/x/xlsx";
  inputs."xlsx".owner = "riinr";
  inputs."xlsx".ref   = "flake-pinning";
  inputs."xlsx".repo  = "flake-nimble";
  inputs."xlsx".type  = "github";
  inputs."xlsx".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."http://github.com/bung87/static_server".dir   = "nimpkgs/h/http://github.com/bung87/static_server";
  inputs."http://github.com/bung87/static_server".owner = "riinr";
  inputs."http://github.com/bung87/static_server".ref   = "flake-pinning";
  inputs."http://github.com/bung87/static_server".repo  = "flake-nimble";
  inputs."http://github.com/bung87/static_server".type  = "github";
  inputs."http://github.com/bung87/static_server".inputs.nixpkgs.follows = "nixpkgs";
  inputs."http://github.com/bung87/static_server".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-crowngui-v0_2_7"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-crowngui-v0_2_7";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}