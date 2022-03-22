{
  description = ''An integrated multithreading Http/1.1 + WebSocket v13 server for Linux'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-guildenstern-0_8.flake = false;
  inputs.src-guildenstern-0_8.ref   = "refs/tags/0.8";
  inputs.src-guildenstern-0_8.owner = "olliNiinivaara";
  inputs.src-guildenstern-0_8.repo  = "GuildenStern";
  inputs.src-guildenstern-0_8.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-guildenstern-0_8"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-guildenstern-0_8";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}