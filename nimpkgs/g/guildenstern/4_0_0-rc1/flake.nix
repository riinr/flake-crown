{
  description = ''Modular multithreading Linux HTTP server'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-guildenstern-4_0_0-rc1.flake = false;
  inputs.src-guildenstern-4_0_0-rc1.ref   = "refs/tags/4.0.0-rc1";
  inputs.src-guildenstern-4_0_0-rc1.owner = "olliNiinivaara";
  inputs.src-guildenstern-4_0_0-rc1.repo  = "GuildenStern";
  inputs.src-guildenstern-4_0_0-rc1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-guildenstern-4_0_0-rc1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-guildenstern-4_0_0-rc1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}