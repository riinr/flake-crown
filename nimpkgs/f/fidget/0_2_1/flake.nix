{
  description = ''Figma based UI library for nim, with HTML and OpenGL backends.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fidget-0_2_1.flake = false;
  inputs.src-fidget-0_2_1.owner = "treeform";
  inputs.src-fidget-0_2_1.ref   = "refs/tags/0.2.1";
  inputs.src-fidget-0_2_1.repo  = "fidget";
  inputs.src-fidget-0_2_1.type  = "github";
  
  inputs."chroma".dir   = "nimpkgs/c/chroma";
  inputs."chroma".owner = "riinr";
  inputs."chroma".ref   = "flake-pinning";
  inputs."chroma".repo  = "flake-nimble";
  inputs."chroma".type  = "github";
  inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography".dir   = "nimpkgs/t/typography";
  inputs."typography".owner = "riinr";
  inputs."typography".ref   = "flake-pinning";
  inputs."typography".repo  = "flake-nimble";
  inputs."typography".type  = "github";
  inputs."typography".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flippy".dir   = "nimpkgs/f/flippy";
  inputs."flippy".owner = "riinr";
  inputs."flippy".ref   = "flake-pinning";
  inputs."flippy".repo  = "flake-nimble";
  inputs."flippy".type  = "github";
  inputs."flippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath".dir   = "nimpkgs/v/vmath";
  inputs."vmath".owner = "riinr";
  inputs."vmath".ref   = "flake-pinning";
  inputs."vmath".repo  = "flake-nimble";
  inputs."vmath".type  = "github";
  inputs."vmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."print".dir   = "nimpkgs/p/print";
  inputs."print".owner = "riinr";
  inputs."print".ref   = "flake-pinning";
  inputs."print".repo  = "flake-nimble";
  inputs."print".type  = "github";
  inputs."print".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl".dir   = "nimpkgs/o/opengl";
  inputs."opengl".owner = "riinr";
  inputs."opengl".ref   = "flake-pinning";
  inputs."opengl".repo  = "flake-nimble";
  inputs."opengl".type  = "github";
  inputs."opengl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."snappy".dir   = "nimpkgs/s/snappy";
  inputs."snappy".owner = "riinr";
  inputs."snappy".ref   = "flake-pinning";
  inputs."snappy".repo  = "flake-nimble";
  inputs."snappy".type  = "github";
  inputs."snappy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snappy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."html5_canvas".dir   = "nimpkgs/h/html5_canvas";
  inputs."html5_canvas".owner = "riinr";
  inputs."html5_canvas".ref   = "flake-pinning";
  inputs."html5_canvas".repo  = "flake-nimble";
  inputs."html5_canvas".type  = "github";
  inputs."html5_canvas".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html5_canvas".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/treeform/staticglfw".dir   = "nimpkgs/h/https://github.com/treeform/staticglfw";
  inputs."https://github.com/treeform/staticglfw".owner = "riinr";
  inputs."https://github.com/treeform/staticglfw".ref   = "flake-pinning";
  inputs."https://github.com/treeform/staticglfw".repo  = "flake-nimble";
  inputs."https://github.com/treeform/staticglfw".type  = "github";
  inputs."https://github.com/treeform/staticglfw".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/treeform/staticglfw".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fidget-0_2_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-fidget-0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}