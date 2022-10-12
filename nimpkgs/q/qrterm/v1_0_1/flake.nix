{
  description = ''A simple QR generator in your terminal.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-QRterm-v1_0_1.flake = false;
  inputs.src-QRterm-v1_0_1.ref   = "refs/tags/v1.0.1";
  inputs.src-QRterm-v1_0_1.owner = "aruZeta";
  inputs.src-QRterm-v1_0_1.repo  = "QRterm";
  inputs.src-QRterm-v1_0_1.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-QRterm-v1_0_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-QRterm-v1_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}