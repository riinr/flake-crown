{
  description = ''nimib 🐳 - nim 👑 driven ⛵ publishing ✍'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimib-v0_1_1.flake = false;
  inputs.src-nimib-v0_1_1.owner = "pietroppeter";
  inputs.src-nimib-v0_1_1.ref   = "refs/tags/v0.1.1";
  inputs.src-nimib-v0_1_1.repo  = "nimib";
  inputs.src-nimib-v0_1_1.type  = "github";
  
  inputs."tempfile".owner = "nim-nix-pkgs";
  inputs."tempfile".ref   = "master";
  inputs."tempfile".repo  = "tempfile";
  inputs."tempfile".type  = "github";
  inputs."tempfile".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempfile".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown".owner = "nim-nix-pkgs";
  inputs."markdown".ref   = "master";
  inputs."markdown".repo  = "markdown";
  inputs."markdown".type  = "github";
  inputs."markdown".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mustache".owner = "nim-nix-pkgs";
  inputs."mustache".ref   = "master";
  inputs."mustache".repo  = "mustache";
  inputs."mustache".type  = "github";
  inputs."mustache".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimib-v0_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimib-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}