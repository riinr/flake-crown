{
  description = ''Modular multithreading Linux HTTP server'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-guildenstern-0_7.flake = false;
  inputs.src-guildenstern-0_7.owner = "olliNiinivaara";
  inputs.src-guildenstern-0_7.ref   = "refs/tags/0.7";
  inputs.src-guildenstern-0_7.repo  = "GuildenStern";
  inputs.src-guildenstern-0_7.type  = "github";
  
  inputs."weave".dir   = "nimpkgs/w/weave";
  inputs."weave".owner = "riinr";
  inputs."weave".ref   = "flake-pinning";
  inputs."weave".repo  = "flake-nimble";
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