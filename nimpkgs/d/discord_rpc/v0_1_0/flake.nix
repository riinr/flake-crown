{
  description = ''Discord RPC/Rich Presence client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-discord_rpc-v0_1_0.flake = false;
  inputs.src-discord_rpc-v0_1_0.owner = "SolitudeSF";
  inputs.src-discord_rpc-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-discord_rpc-v0_1_0.repo  = "discord_rpc";
  inputs.src-discord_rpc-v0_1_0.type  = "github";
  
  inputs."uuids".dir   = "nimpkgs/u/uuids";
  inputs."uuids".owner = "riinr";
  inputs."uuids".ref   = "flake-pinning";
  inputs."uuids".repo  = "flake-nimble";
  inputs."uuids".type  = "github";
  inputs."uuids".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."packedjson".dir   = "nimpkgs/p/packedjson";
  inputs."packedjson".owner = "riinr";
  inputs."packedjson".ref   = "flake-pinning";
  inputs."packedjson".repo  = "flake-nimble";
  inputs."packedjson".type  = "github";
  inputs."packedjson".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packedjson".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-discord_rpc-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-discord_rpc-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}