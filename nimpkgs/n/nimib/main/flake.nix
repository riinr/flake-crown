{
  description = ''nimib 🐳 - nim 👑 driven ⛵ publishing ✍'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimib-main.flake = false;
  inputs.src-nimib-main.owner = "pietroppeter";
  inputs.src-nimib-main.ref   = "refs/heads/main";
  inputs.src-nimib-main.repo  = "nimib";
  inputs.src-nimib-main.type  = "github";
  
  inputs."tempfile".dir   = "nimpkgs/t/tempfile";
  inputs."tempfile".owner = "riinr";
  inputs."tempfile".ref   = "flake-pinning";
  inputs."tempfile".repo  = "flake-nimble";
  inputs."tempfile".type  = "github";
  inputs."tempfile".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempfile".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown".dir   = "nimpkgs/m/markdown";
  inputs."markdown".owner = "riinr";
  inputs."markdown".ref   = "flake-pinning";
  inputs."markdown".repo  = "flake-nimble";
  inputs."markdown".type  = "github";
  inputs."markdown".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mustache".dir   = "nimpkgs/m/mustache";
  inputs."mustache".owner = "riinr";
  inputs."mustache".ref   = "flake-pinning";
  inputs."mustache".repo  = "flake-nimble";
  inputs."mustache".type  = "github";
  inputs."mustache".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."toml_serialization".dir   = "nimpkgs/t/toml_serialization";
  inputs."toml_serialization".owner = "riinr";
  inputs."toml_serialization".ref   = "flake-pinning";
  inputs."toml_serialization".repo  = "flake-nimble";
  inputs."toml_serialization".type  = "github";
  inputs."toml_serialization".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toml_serialization".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimib-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimib-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}