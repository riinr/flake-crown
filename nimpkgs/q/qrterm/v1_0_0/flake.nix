{
  description = ''A simple QR generator in your terminal.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-QRterm-v1_0_0.flake = false;
  inputs.src-QRterm-v1_0_0.ref   = "refs/tags/v1.0.0";
  inputs.src-QRterm-v1_0_0.owner = "aruZeta";
  inputs.src-QRterm-v1_0_0.repo  = "QRterm";
  inputs.src-QRterm-v1_0_0.type  = "github";
  
  inputs."qrgen".owner = "nim-nix-pkgs";
  inputs."qrgen".ref   = "master";
  inputs."qrgen".repo  = "qrgen";
  inputs."qrgen".dir   = "v2_1_1";
  inputs."qrgen".type  = "github";
  inputs."qrgen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qrgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-QRterm-v1_0_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-QRterm-v1_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}