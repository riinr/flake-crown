{
  description = ''Nim Home Assistant (NimHA) is a hub for combining multiple home automation devices and automating jobs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimha-v0_3_6.flake = false;
  inputs.src-nimha-v0_3_6.owner = "ThomasTJdev";
  inputs.src-nimha-v0_3_6.ref   = "refs/tags/v0.3.6";
  inputs.src-nimha-v0_3_6.repo  = "nim_homeassistant";
  inputs.src-nimha-v0_3_6.type  = "github";
  
  inputs."jester".dir   = "nimpkgs/j/jester";
  inputs."jester".owner = "riinr";
  inputs."jester".ref   = "flake-pinning";
  inputs."jester".repo  = "flake-nimble";
  inputs."jester".type  = "github";
  inputs."jester".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."recaptcha".dir   = "nimpkgs/r/recaptcha";
  inputs."recaptcha".owner = "riinr";
  inputs."recaptcha".ref   = "flake-pinning";
  inputs."recaptcha".repo  = "flake-nimble";
  inputs."recaptcha".type  = "github";
  inputs."recaptcha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."recaptcha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bcrypt".dir   = "nimpkgs/b/bcrypt";
  inputs."bcrypt".owner = "riinr";
  inputs."bcrypt".ref   = "flake-pinning";
  inputs."bcrypt".repo  = "flake-nimble";
  inputs."bcrypt".type  = "github";
  inputs."bcrypt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bcrypt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."multicast".dir   = "nimpkgs/m/multicast";
  inputs."multicast".owner = "riinr";
  inputs."multicast".ref   = "flake-pinning";
  inputs."multicast".repo  = "flake-nimble";
  inputs."multicast".type  = "github";
  inputs."multicast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."multicast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket".dir   = "nimpkgs/w/websocket";
  inputs."websocket".owner = "riinr";
  inputs."websocket".ref   = "flake-pinning";
  inputs."websocket".repo  = "flake-nimble";
  inputs."websocket".type  = "github";
  inputs."websocket".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wiringpinim".dir   = "nimpkgs/w/wiringpinim";
  inputs."wiringpinim".owner = "riinr";
  inputs."wiringpinim".ref   = "flake-pinning";
  inputs."wiringpinim".repo  = "flake-nimble";
  inputs."wiringpinim".type  = "github";
  inputs."wiringpinim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wiringpinim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xiaomi".dir   = "nimpkgs/x/xiaomi";
  inputs."xiaomi".owner = "riinr";
  inputs."xiaomi".ref   = "flake-pinning";
  inputs."xiaomi".repo  = "flake-nimble";
  inputs."xiaomi".type  = "github";
  inputs."xiaomi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xiaomi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimha-v0_3_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimha-v0_3_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}