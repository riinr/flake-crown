{
  description = ''Test runner with file monitoring and desktop notification capabilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-testrunner-master.flake = false;
  inputs.src-testrunner-master.owner = "FedericoCeratto";
  inputs.src-testrunner-master.ref   = "refs/heads/master";
  inputs.src-testrunner-master.repo  = "nim-testrunner";
  inputs.src-testrunner-master.type  = "github";
  
  inputs."libnotify".dir   = "nimpkgs/l/libnotify";
  inputs."libnotify".owner = "riinr";
  inputs."libnotify".ref   = "flake-pinning";
  inputs."libnotify".repo  = "flake-nimble";
  inputs."libnotify".type  = "github";
  inputs."libnotify".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libnotify".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fswatch".dir   = "nimpkgs/f/fswatch";
  inputs."fswatch".owner = "riinr";
  inputs."fswatch".ref   = "flake-pinning";
  inputs."fswatch".repo  = "flake-nimble";
  inputs."fswatch".type  = "github";
  inputs."fswatch".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fswatch".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-testrunner-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-testrunner-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}