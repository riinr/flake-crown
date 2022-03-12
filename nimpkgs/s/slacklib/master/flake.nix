{
  description = ''Library for working with a slack app or sending messages to a slack channel (slack.com)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-slacklib-master.flake = false;
  inputs.src-slacklib-master.owner = "ThomasTJdev";
  inputs.src-slacklib-master.ref   = "refs/heads/master";
  inputs.src-slacklib-master.repo  = "nim_slacklib";
  inputs.src-slacklib-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-slacklib-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-slacklib-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}