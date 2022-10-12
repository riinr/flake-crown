{
  description = ''A simple QR generator in your terminal.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-QRterm-main.flake = false;
  inputs.src-QRterm-main.ref   = "refs/heads/main";
  inputs.src-QRterm-main.owner = "aruZeta";
  inputs.src-QRterm-main.repo  = "QRterm";
  inputs.src-QRterm-main.type  = "github";
  
  inputs."qrgen".owner = "nim-nix-pkgs";
  inputs."qrgen".ref   = "master";
  inputs."qrgen".repo  = "qrgen";
  inputs."qrgen".dir   = "v2_2_1";
  inputs."qrgen".type  = "github";
  inputs."qrgen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qrgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-QRterm-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-QRterm-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}