{
  description = ''Simple web to share books, Calibre, Jester, Spectre CSS, No JavaScript, WebP & ZIP to reduce bandwidth'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."biblioteca_guarrilla-master".dir   = "master";
  inputs."biblioteca_guarrilla-master".owner = "nim-nix-pkgs";
  inputs."biblioteca_guarrilla-master".ref   = "master";
  inputs."biblioteca_guarrilla-master".repo  = "biblioteca_guarrilla";
  inputs."biblioteca_guarrilla-master".type  = "github";
  inputs."biblioteca_guarrilla-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."biblioteca_guarrilla-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."biblioteca_guarrilla-0_1_5".dir   = "0_1_5";
  inputs."biblioteca_guarrilla-0_1_5".owner = "nim-nix-pkgs";
  inputs."biblioteca_guarrilla-0_1_5".ref   = "master";
  inputs."biblioteca_guarrilla-0_1_5".repo  = "biblioteca_guarrilla";
  inputs."biblioteca_guarrilla-0_1_5".type  = "github";
  inputs."biblioteca_guarrilla-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."biblioteca_guarrilla-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."biblioteca_guarrilla-0_1_8".dir   = "0_1_8";
  inputs."biblioteca_guarrilla-0_1_8".owner = "nim-nix-pkgs";
  inputs."biblioteca_guarrilla-0_1_8".ref   = "master";
  inputs."biblioteca_guarrilla-0_1_8".repo  = "biblioteca_guarrilla";
  inputs."biblioteca_guarrilla-0_1_8".type  = "github";
  inputs."biblioteca_guarrilla-0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."biblioteca_guarrilla-0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."biblioteca_guarrilla-0_1_9".dir   = "0_1_9";
  inputs."biblioteca_guarrilla-0_1_9".owner = "nim-nix-pkgs";
  inputs."biblioteca_guarrilla-0_1_9".ref   = "master";
  inputs."biblioteca_guarrilla-0_1_9".repo  = "biblioteca_guarrilla";
  inputs."biblioteca_guarrilla-0_1_9".type  = "github";
  inputs."biblioteca_guarrilla-0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."biblioteca_guarrilla-0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}