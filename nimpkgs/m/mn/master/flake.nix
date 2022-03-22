{
  description = ''A truly minimal concatenative programming language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mn-master.flake = false;
  inputs.src-mn-master.ref   = "refs/heads/master";
  inputs.src-mn-master.owner = "h3rald";
  inputs.src-mn-master.repo  = "mn";
  inputs.src-mn-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mn-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mn-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}