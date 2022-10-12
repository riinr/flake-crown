{
  description = ''Protobuf implementation compatible with the nim-serialization framework.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-protobuf_serialization-master.flake = false;
  inputs.src-protobuf_serialization-master.ref   = "refs/heads/master";
  inputs.src-protobuf_serialization-master.owner = "status-im";
  inputs.src-protobuf_serialization-master.repo  = "nim-protobuf-serialization";
  inputs.src-protobuf_serialization-master.type  = "github";
  
  inputs."stew".owner = "nim-nix-pkgs";
  inputs."stew".ref   = "master";
  inputs."stew".repo  = "stew";
  inputs."stew".dir   = "master";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faststreams".owner = "nim-nix-pkgs";
  inputs."faststreams".ref   = "master";
  inputs."faststreams".repo  = "faststreams";
  inputs."faststreams".dir   = "master";
  inputs."faststreams".type  = "github";
  inputs."faststreams".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faststreams".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serialization".owner = "nim-nix-pkgs";
  inputs."serialization".ref   = "master";
  inputs."serialization".repo  = "serialization";
  inputs."serialization".dir   = "master";
  inputs."serialization".type  = "github";
  inputs."serialization".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serialization".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."combparser".owner = "nim-nix-pkgs";
  inputs."combparser".ref   = "master";
  inputs."combparser".repo  = "combparser";
  inputs."combparser".dir   = "master";
  inputs."combparser".type  = "github";
  inputs."combparser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."combparser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-protobuf_serialization-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-protobuf_serialization-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}