{
  description = ''RPC implementation for Nim based on msgpack4nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimrpc_milis-master.flake = false;
  inputs.src-nimrpc_milis-master.owner = "milisarge";
  inputs.src-nimrpc_milis-master.ref   = "master";
  inputs.src-nimrpc_milis-master.repo  = "nimrpc_milis";
  inputs.src-nimrpc_milis-master.type  = "github";
  
  inputs."msgpack4nim".owner = "nim-nix-pkgs";
  inputs."msgpack4nim".ref   = "master";
  inputs."msgpack4nim".repo  = "msgpack4nim";
  inputs."msgpack4nim".dir   = "v0_3_1";
  inputs."msgpack4nim".type  = "github";
  inputs."msgpack4nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."msgpack4nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimrpc_milis-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimrpc_milis-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}