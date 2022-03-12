{
  description = ''a couchDB client written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mycouch-main.flake = false;
  inputs.src-mycouch-main.owner = "hamidb80";
  inputs.src-mycouch-main.ref   = "refs/heads/main";
  inputs.src-mycouch-main.repo  = "mycouch";
  inputs.src-mycouch-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mycouch-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mycouch-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}