{
  description = ''A port of mdbook to nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimibook-main.flake = false;
  inputs.src-nimibook-main.ref   = "refs/heads/main";
  inputs.src-nimibook-main.owner = "pietroppeter";
  inputs.src-nimibook-main.repo  = "nimibook";
  inputs.src-nimibook-main.type  = "github";
  
  inputs."nimib".owner = "nim-nix-pkgs";
  inputs."nimib".ref   = "master";
  inputs."nimib".repo  = "nimib";
  inputs."nimib".dir   = "v0_2_4";
  inputs."nimib".type  = "github";
  inputs."nimib".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsony".owner = "nim-nix-pkgs";
  inputs."jsony".ref   = "master";
  inputs."jsony".repo  = "jsony";
  inputs."jsony".dir   = "1_1_3";
  inputs."jsony".type  = "github";
  inputs."jsony".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimibook-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimibook-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}