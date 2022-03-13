{
  description = ''Flexible TOML serialization [not] relying on run-time type information'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-toml_serialization-master.flake = false;
  inputs.src-toml_serialization-master.owner = "status-im";
  inputs.src-toml_serialization-master.ref   = "refs/heads/master";
  inputs.src-toml_serialization-master.repo  = "nim-toml-serialization";
  inputs.src-toml_serialization-master.type  = "github";
  
  inputs."serialization".owner = "nim-nix-pkgs";
  inputs."serialization".ref   = "master";
  inputs."serialization".repo  = "serialization";
  inputs."serialization".type  = "github";
  inputs."serialization".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serialization".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stew".owner = "nim-nix-pkgs";
  inputs."stew".ref   = "master";
  inputs."stew".repo  = "stew";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/status-im/nim-unittest2".owner = "nim-nix-pkgs";
  inputs."https://github.com/status-im/nim-unittest2".ref   = "master";
  inputs."https://github.com/status-im/nim-unittest2".repo  = "https://github.com/status-im/nim-unittest2";
  inputs."https://github.com/status-im/nim-unittest2".type  = "github";
  inputs."https://github.com/status-im/nim-unittest2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/status-im/nim-unittest2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-toml_serialization-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-toml_serialization-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}