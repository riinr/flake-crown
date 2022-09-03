{
  description = ''Nim Home Assistant'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimha-master.flake = false;
  inputs.src-nimha-master.ref   = "refs/heads/master";
  inputs.src-nimha-master.owner = "ThomasTJdev";
  inputs.src-nimha-master.repo  = "nim_homeassistant";
  inputs.src-nimha-master.type  = "github";
  
  inputs."jester".owner = "nim-nix-pkgs";
  inputs."jester".ref   = "master";
  inputs."jester".repo  = "jester";
  inputs."jester".dir   = "v0_4_3";
  inputs."jester".type  = "github";
  inputs."jester".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpbeast".owner = "nim-nix-pkgs";
  inputs."httpbeast".ref   = "master";
  inputs."httpbeast".repo  = "httpbeast";
  inputs."httpbeast".dir   = "v0_2_2";
  inputs."httpbeast".type  = "github";
  inputs."httpbeast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
  inputs."bcrypt".dir   = "source";
  inputs."bcrypt".type  = "github";
  inputs."bcrypt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bcrypt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."multicast".owner = "nim-nix-pkgs";
  inputs."multicast".ref   = "master";
  inputs."multicast".repo  = "multicast";
  inputs."multicast".dir   = "source";
  inputs."multicast".type  = "github";
  inputs."multicast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."multicast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket".owner = "nim-nix-pkgs";
  inputs."websocket".ref   = "master";
  inputs."websocket".repo  = "websocket";
  inputs."websocket".dir   = "0_4_1";
  inputs."websocket".type  = "github";
  inputs."websocket".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wiringpinim".owner = "nim-nix-pkgs";
  inputs."wiringpinim".ref   = "master";
  inputs."wiringpinim".repo  = "wiringpinim";
  inputs."wiringpinim".dir   = "master";
  inputs."wiringpinim".type  = "github";
  inputs."wiringpinim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wiringpinim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xiaomi".owner = "nim-nix-pkgs";
  inputs."xiaomi".ref   = "master";
  inputs."xiaomi".repo  = "xiaomi";
  inputs."xiaomi".dir   = "v0_1_4";
  inputs."xiaomi".type  = "github";
  inputs."xiaomi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xiaomi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimha-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimha-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}