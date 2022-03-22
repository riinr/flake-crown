{
  description = ''Port of Python's html.escape and html.unescape to Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-htmlunescape-master.flake = false;
  inputs.src-htmlunescape-master.ref   = "refs/heads/master";
  inputs.src-htmlunescape-master.owner = "AmanoTeam";
  inputs.src-htmlunescape-master.repo  = "htmlunescape";
  inputs.src-htmlunescape-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-htmlunescape-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-htmlunescape-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}