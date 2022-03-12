{
  description = ''A sinatra-like web framework for Nim with plugins.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jesterwithplugins-master.flake = false;
  inputs.src-jesterwithplugins-master.owner = "JohnAD";
  inputs.src-jesterwithplugins-master.ref   = "refs/heads/master";
  inputs.src-jesterwithplugins-master.repo  = "jesterwithplugins";
  inputs.src-jesterwithplugins-master.type  = "github";
  
  inputs."httpbeast".dir   = "nimpkgs/h/httpbeast";
  inputs."httpbeast".owner = "riinr";
  inputs."httpbeast".ref   = "flake-pinning";
  inputs."httpbeast".repo  = "flake-nimble";
  inputs."httpbeast".type  = "github";
  inputs."httpbeast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/timotheecour/asynctools".dir   = "nimpkgs/h/https://github.com/timotheecour/asynctools";
  inputs."https://github.com/timotheecour/asynctools".owner = "riinr";
  inputs."https://github.com/timotheecour/asynctools".ref   = "flake-pinning";
  inputs."https://github.com/timotheecour/asynctools".repo  = "flake-nimble";
  inputs."https://github.com/timotheecour/asynctools".type  = "github";
  inputs."https://github.com/timotheecour/asynctools".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/timotheecour/asynctools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jesterwithplugins-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jesterwithplugins-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}