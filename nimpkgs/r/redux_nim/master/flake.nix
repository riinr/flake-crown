{
  description = ''Redux Implementation in nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-redux_nim-master.flake = false;
  inputs.src-redux_nim-master.ref   = "refs/heads/master";
  inputs.src-redux_nim-master.owner = "M4RC3L05";
  inputs.src-redux_nim-master.repo  = "redux-nim";
  inputs.src-redux_nim-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-redux_nim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-redux_nim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}