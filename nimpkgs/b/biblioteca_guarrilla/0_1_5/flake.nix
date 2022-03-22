{
  description = ''Simple web to share books, Calibre, Jester, Spectre CSS, No JavaScript, WebP & ZIP to reduce bandwidth'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-biblioteca_guarrilla-0_1_5.flake = false;
  inputs.src-biblioteca_guarrilla-0_1_5.owner = "juancarlospaco";
  inputs.src-biblioteca_guarrilla-0_1_5.ref   = "0_1_5";
  inputs.src-biblioteca_guarrilla-0_1_5.repo  = "biblioteca-guarrilla";
  inputs.src-biblioteca_guarrilla-0_1_5.type  = "github";
  
  inputs."webp".owner = "nim-nix-pkgs";
  inputs."webp".ref   = "master";
  inputs."webp".repo  = "webp";
  inputs."webp".dir   = "";
  inputs."webp".type  = "github";
  inputs."webp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zip".owner = "nim-nix-pkgs";
  inputs."zip".ref   = "master";
  inputs."zip".repo  = "zip";
  inputs."zip".dir   = "0_3_1";
  inputs."zip".type  = "github";
  inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-biblioteca_guarrilla-0_1_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-biblioteca_guarrilla-0_1_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}