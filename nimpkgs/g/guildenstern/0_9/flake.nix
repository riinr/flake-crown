{
  description = ''Modular multithreading Linux HTTP server'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-guildenstern-0_9.flake = false;
  inputs.src-guildenstern-0_9.owner = "olliNiinivaara";
  inputs.src-guildenstern-0_9.ref   = "refs/tags/0.9";
  inputs.src-guildenstern-0_9.repo  = "GuildenStern";
  inputs.src-guildenstern-0_9.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-guildenstern-0_9"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-guildenstern-0_9";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}