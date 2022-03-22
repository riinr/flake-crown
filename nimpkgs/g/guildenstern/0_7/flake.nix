{
  description = ''An integrated multithreading Http/1.1 + WebSocket v13 server for Linux'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-guildenstern-0_7.flake = false;
  inputs.src-guildenstern-0_7.owner = "olliNiinivaara";
  inputs.src-guildenstern-0_7.ref   = "0_7";
  inputs.src-guildenstern-0_7.repo  = "GuildenStern";
  inputs.src-guildenstern-0_7.type  = "github";
  
  inputs."weave".owner = "nim-nix-pkgs";
  inputs."weave".ref   = "master";
  inputs."weave".repo  = "weave";
  inputs."weave".dir   = "v0_4_0";
  inputs."weave".type  = "github";
  inputs."weave".inputs.nixpkgs.follows = "nixpkgs";
  inputs."weave".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-guildenstern-0_7"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-guildenstern-0_7";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}