{
  description = ''Generate and host a website. Run the package and access your new webpage.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimwc-v4_0_11.flake = false;
  inputs.src-nimwc-v4_0_11.ref   = "refs/tags/v4.0.11";
  inputs.src-nimwc-v4_0_11.owner = "ThomasTJdev";
  inputs.src-nimwc-v4_0_11.repo  = "nim_websitecreator";
  inputs.src-nimwc-v4_0_11.type  = "github";
  
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
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimwc-v4_0_11"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimwc-v4_0_11";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}