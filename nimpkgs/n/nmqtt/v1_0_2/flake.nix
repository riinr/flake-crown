{
  description = ''Native MQTT client library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nmqtt-v1_0_2.flake = false;
  inputs.src-nmqtt-v1_0_2.owner = "zevv";
  inputs.src-nmqtt-v1_0_2.ref   = "refs/tags/v1.0.2";
  inputs.src-nmqtt-v1_0_2.repo  = "nmqtt";
  inputs.src-nmqtt-v1_0_2.type  = "github";
  
  inputs."bcrypt".owner = "nim-nix-pkgs";
  inputs."bcrypt".ref   = "master";
  inputs."bcrypt".repo  = "bcrypt";
  inputs."bcrypt".type  = "github";
  inputs."bcrypt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bcrypt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nmqtt-v1_0_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nmqtt-v1_0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}