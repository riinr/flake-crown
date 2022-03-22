{
  description = ''IRC client module'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-irc-master.flake = false;
  inputs.src-irc-master.ref   = "refs/heads/master";
  inputs.src-irc-master.owner = "nim-lang";
  inputs.src-irc-master.repo  = "irc";
  inputs.src-irc-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-irc-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-irc-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}