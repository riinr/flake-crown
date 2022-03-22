{
  description = ''Yahoo! Weather API wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-yahooweather-master.flake = false;
  inputs.src-yahooweather-master.ref   = "refs/heads/master";
  inputs.src-yahooweather-master.owner = "achesak";
  inputs.src-yahooweather-master.repo  = "nim-yahooweather";
  inputs.src-yahooweather-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-yahooweather-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-yahooweather-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}