{
  description = ''Cross-platform access to OS keychain'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-keyring-v0_1_0.flake = false;
  inputs.src-keyring-v0_1_0.owner = "iffy";
  inputs.src-keyring-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-keyring-v0_1_0.repo  = "nim-keyring";
  inputs.src-keyring-v0_1_0.type  = "github";
  
  inputs."https://github.com/iffy/nim-dbus.git".owner = "nim-nix-pkgs";
  inputs."https://github.com/iffy/nim-dbus.git".ref   = "master";
  inputs."https://github.com/iffy/nim-dbus.git".repo  = "https://github.com/iffy/nim-dbus.git";
  inputs."https://github.com/iffy/nim-dbus.git".type  = "github";
  inputs."https://github.com/iffy/nim-dbus.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/iffy/nim-dbus.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-keyring-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-keyring-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}