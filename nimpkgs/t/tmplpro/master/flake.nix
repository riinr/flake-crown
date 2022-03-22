{
  description = ''Text template processor, handy not only for CGI'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tmplpro-master.flake = false;
  inputs.src-tmplpro-master.ref   = "refs/heads/master";
  inputs.src-tmplpro-master.owner = "mjfh";
  inputs.src-tmplpro-master.repo  = "nim-tmplpro";
  inputs.src-tmplpro-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tmplpro-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tmplpro-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}