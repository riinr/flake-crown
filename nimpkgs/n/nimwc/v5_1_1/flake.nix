{
  description = ''Generate and host a website. Run the package and access your new webpage.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimwc-v5_1_1.flake = false;
  inputs.src-nimwc-v5_1_1.ref   = "refs/tags/v5.1.1";
  inputs.src-nimwc-v5_1_1.owner = "ThomasTJdev";
  inputs.src-nimwc-v5_1_1.repo  = "nim_websitecreator";
  inputs.src-nimwc-v5_1_1.type  = "github";
  
  inputs."jester".owner = "nim-nix-pkgs";
  inputs."jester".ref   = "master";
  inputs."jester".repo  = "jester";
  inputs."jester".dir   = "v0_5_0";
  inputs."jester".type  = "github";
  inputs."jester".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."recaptcha".owner = "nim-nix-pkgs";
  inputs."recaptcha".ref   = "master";
  inputs."recaptcha".repo  = "recaptcha";
  inputs."recaptcha".dir   = "v1_0_3";
  inputs."recaptcha".type  = "github";
  inputs."recaptcha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."recaptcha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bcrypt".owner = "nim-nix-pkgs";
  inputs."bcrypt".ref   = "master";
  inputs."bcrypt".repo  = "bcrypt";
  inputs."bcrypt".dir   = "master";
  inputs."bcrypt".type  = "github";
  inputs."bcrypt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bcrypt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datetime2human".owner = "nim-nix-pkgs";
  inputs."datetime2human".ref   = "master";
  inputs."datetime2human".repo  = "datetime2human";
  inputs."datetime2human".dir   = "master";
  inputs."datetime2human".type  = "github";
  inputs."datetime2human".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datetime2human".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."otp".owner = "nim-nix-pkgs";
  inputs."otp".ref   = "master";
  inputs."otp".repo  = "otp";
  inputs."otp".dir   = "master";
  inputs."otp".type  = "github";
  inputs."otp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."otp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."firejail".owner = "nim-nix-pkgs";
  inputs."firejail".ref   = "master";
  inputs."firejail".repo  = "firejail";
  inputs."firejail".dir   = "master";
  inputs."firejail".type  = "github";
  inputs."firejail".inputs.nixpkgs.follows = "nixpkgs";
  inputs."firejail".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webp".owner = "nim-nix-pkgs";
  inputs."webp".ref   = "master";
  inputs."webp".repo  = "webp";
  inputs."webp".dir   = "master";
  inputs."webp".type  = "github";
  inputs."webp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libravatar".owner = "nim-nix-pkgs";
  inputs."libravatar".ref   = "master";
  inputs."libravatar".repo  = "libravatar";
  inputs."libravatar".dir   = "master";
  inputs."libravatar".type  = "github";
  inputs."libravatar".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libravatar".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."html_tools".owner = "nim-nix-pkgs";
  inputs."html_tools".ref   = "master";
  inputs."html_tools".repo  = "html_tools";
  inputs."html_tools".dir   = "master";
  inputs."html_tools".type  = "github";
  inputs."html_tools".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html_tools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimwc-v5_1_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimwc-v5_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}